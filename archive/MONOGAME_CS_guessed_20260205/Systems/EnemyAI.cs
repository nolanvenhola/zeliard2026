using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using ZeliardModern.Physics;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// AI behavior types for enemies
    /// </summary>
    public enum AIBehavior
    {
        Stationary,     // Doesn't move
        Patrol,         // Moves back and forth
        Chase,          // Chases player when in range
        Flying,         // Flies in patterns
        Boss            // Complex boss behavior
    }

    /// <summary>
    /// AI controller for enemy behavior
    /// </summary>
    public class EnemyAI
    {
        private Enemy _enemy;
        private PhysicsBody _physicsBody;
        private AIBehavior _behavior;
        private Vector2 _startPosition;
        private float _patrolDistance;
        private float _chaseRange;
        private float _attackRange;
        private float _moveSpeed;
        private bool _movingRight;
        private float _stateTimer;

        public EnemyAI(Enemy enemy, PhysicsBody physicsBody, AIBehavior behavior = AIBehavior.Patrol)
        {
            _enemy = enemy;
            _physicsBody = physicsBody;
            _behavior = behavior;
            _startPosition = new Vector2(enemy.X, enemy.Y);
            _patrolDistance = 100f;
            _chaseRange = 200f;
            _attackRange = 40f;
            _moveSpeed = 80f;
            _movingRight = true;
            _stateTimer = 0f;
        }

        public void SetPatrolDistance(float distance) => _patrolDistance = distance;
        public void SetChaseRange(float range) => _chaseRange = range;
        public void SetAttackRange(float range) => _attackRange = range;
        public void SetMoveSpeed(float speed) => _moveSpeed = speed;

        /// <summary>
        /// Update enemy AI behavior
        /// </summary>
        public void Update(float deltaTime, Player player)
        {
            if (!_enemy.IsAlive)
                return;

            _stateTimer += deltaTime;

            switch (_behavior)
            {
                case AIBehavior.Stationary:
                    UpdateStationary(deltaTime, player);
                    break;

                case AIBehavior.Patrol:
                    UpdatePatrol(deltaTime, player);
                    break;

                case AIBehavior.Chase:
                    UpdateChase(deltaTime, player);
                    break;

                case AIBehavior.Flying:
                    UpdateFlying(deltaTime, player);
                    break;

                case AIBehavior.Boss:
                    UpdateBoss(deltaTime, player);
                    break;
            }

            // Update enemy position from physics body
            _enemy.X = _physicsBody.Position.X;
            _enemy.Y = _physicsBody.Position.Y;
        }

        private void UpdateStationary(float deltaTime, Player player)
        {
            // Face player if in range
            float distanceToPlayer = Vector2.Distance(
                new Vector2(_enemy.X, _enemy.Y),
                new Vector2(player.X, player.Y)
            );

            if (distanceToPlayer <= _attackRange)
            {
                // Attack player
                // This would trigger attack animation
            }
        }

        private void UpdatePatrol(float deltaTime, Player player)
        {
            // Check if player is in chase range
            float distanceToPlayer = Vector2.Distance(
                new Vector2(_enemy.X, _enemy.Y),
                new Vector2(player.X, player.Y)
            );

            if (distanceToPlayer <= _chaseRange)
            {
                // Switch to chasing temporarily
                ChasePlayer(player);
                return;
            }

            // Patrol behavior
            float distanceFromStart = Math.Abs(_enemy.X - _startPosition.X);

            if (distanceFromStart >= _patrolDistance)
            {
                _movingRight = !_movingRight;
            }

            // Move
            float direction = _movingRight ? 1f : -1f;
            var vel = _physicsBody.Velocity;
            vel.X = direction * _moveSpeed;
            _physicsBody.Velocity = vel;
        }

        private void UpdateChase(float deltaTime, Player player)
        {
            ChasePlayer(player);
        }

        private void ChasePlayer(Player player)
        {
            float distanceToPlayer = Vector2.Distance(
                new Vector2(_enemy.X, _enemy.Y),
                new Vector2(player.X, player.Y)
            );

            if (distanceToPlayer <= _attackRange)
            {
                // Stop and attack
                var vel = _physicsBody.Velocity;
                vel.X = 0;
                _physicsBody.Velocity = vel;
                // Trigger attack
            }
            else if (distanceToPlayer <= _chaseRange)
            {
                // Chase player
                float direction = player.X > _enemy.X ? 1f : -1f;
                var vel = _physicsBody.Velocity;
                vel.X = direction * _moveSpeed * 1.5f; // Chase faster
                _physicsBody.Velocity = vel;
            }
            else
            {
                // Return to patrol
                var vel = _physicsBody.Velocity;
                vel.X = 0;
                _physicsBody.Velocity = vel;
            }
        }

        private void UpdateFlying(float deltaTime, Player player)
        {
            // Sine wave flying pattern
            float waveAmplitude = 50f;
            float waveFrequency = 2f;
            float targetY = _startPosition.Y + (float)Math.Sin(_stateTimer * waveFrequency) * waveAmplitude;

            var vel = _physicsBody.Velocity;
            vel.Y = (targetY - _enemy.Y) * 2f;

            // Move horizontally
            float direction = _movingRight ? 1f : -1f;
            vel.X = direction * _moveSpeed * 0.7f;
            _physicsBody.Velocity = vel;

            // Turn around at patrol distance
            float distanceFromStart = Math.Abs(_enemy.X - _startPosition.X);
            if (distanceFromStart >= _patrolDistance)
            {
                _movingRight = !_movingRight;
            }

            // Flying enemies ignore gravity
            _physicsBody.Gravity = 0f;
        }

        private void UpdateBoss(float deltaTime, Player player)
        {
            // Boss AI would be more complex, potentially state-based
            // For now, similar to chase but with more aggressive behavior
            float distanceToPlayer = Vector2.Distance(
                new Vector2(_enemy.X, _enemy.Y),
                new Vector2(player.X, player.Y)
            );

            if (distanceToPlayer <= _attackRange * 2f)
            {
                // Multiple attack patterns based on state timer
                if (_stateTimer % 5f < 2f)
                {
                    // Aggressive chase
                    float direction = player.X > _enemy.X ? 1f : -1f;
                    var vel = _physicsBody.Velocity;
                    vel.X = direction * _moveSpeed * 2f;
                    _physicsBody.Velocity = vel;
                }
                else
                {
                    // Retreat and prepare special attack
                    float direction = player.X > _enemy.X ? -1f : 1f;
                    var vel = _physicsBody.Velocity;
                    vel.X = direction * _moveSpeed;
                    _physicsBody.Velocity = vel;
                }
            }
        }

        public bool IsAttacking()
        {
            // Check if enemy is in attack range of player
            // This would be checked in conjunction with attack animation
            return false; // Placeholder
        }

        public bool IsFacingRight => _movingRight;
    }

    /// <summary>
    /// Manages all enemies in the current level
    /// </summary>
    public class EnemyManager
    {
        private List<Enemy> _enemies;
        private List<PhysicsBody> _physicsBodies;
        private List<EnemyAI> _aiControllers;

        public EnemyManager()
        {
            _enemies = new List<Enemy>();
            _physicsBodies = new List<PhysicsBody>();
            _aiControllers = new List<EnemyAI>();
        }

        /// <summary>
        /// Spawn an enemy at the specified position
        /// </summary>
        public void SpawnEnemy(Enemy enemy, AIBehavior behavior = AIBehavior.Patrol)
        {
            _enemies.Add(enemy);

            // Create physics body for enemy (assuming 32x32 size, adjust as needed)
            var physicsBody = new PhysicsBody(new Vector2(enemy.X, enemy.Y), 32, 32);
            _physicsBodies.Add(physicsBody);

            // Create AI controller
            var ai = new EnemyAI(enemy, physicsBody, behavior);
            _aiControllers.Add(ai);
        }

        /// <summary>
        /// Update all enemies
        /// </summary>
        public void Update(float deltaTime, Player player, Graphics.TileMap tileMap)
        {
            for (int i = _enemies.Count - 1; i >= 0; i--)
            {
                if (!_enemies[i].IsAlive)
                {
                    // Remove dead enemies
                    _enemies.RemoveAt(i);
                    _physicsBodies.RemoveAt(i);
                    _aiControllers.RemoveAt(i);
                    continue;
                }

                // Update AI
                _aiControllers[i].Update(deltaTime, player);

                // Update physics
                _physicsBodies[i].Update(deltaTime);

                // Resolve collisions with tilemap
                if (tileMap != null)
                {
                    CollisionSystem.ResolveCollisions(_physicsBodies[i], tileMap);
                }
            }
        }

        /// <summary>
        /// Check collisions with player
        /// </summary>
        public Enemy CheckPlayerCollision(PhysicsBody playerBody)
        {
            for (int i = 0; i < _enemies.Count; i++)
            {
                if (CollisionSystem.CheckCollision(playerBody, _physicsBodies[i]))
                {
                    return _enemies[i];
                }
            }
            return null;
        }

        public List<Enemy> GetEnemies() => _enemies;
        public List<PhysicsBody> GetPhysicsBodies() => _physicsBodies;

        public void Clear()
        {
            _enemies.Clear();
            _physicsBodies.Clear();
            _aiControllers.Clear();
        }
    }
}
