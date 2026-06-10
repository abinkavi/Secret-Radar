🔍 Secret Radar
A distributed, self-evolving GitHub secret detection platform.
Architecture
```
Ingestion → Dedup → Message Bus → Detection Cluster → Analysis → Storage → Reporting
                                        ↑
                              Adversary ↔ Defender (Evolution Loop)
```
Agents
Agent	Role
Architect	System topology, data flow, dependency graph
Builder	Detection engine, regex, entropy, context scoring
Security	Redaction, safety validation, audit logging
Adversary	Evasion simulation, encoding, fragmentation
Defender	Rule updates, FP/FN tracking, threshold tuning
Analyst	Trend reports, risk scoring, intelligence output
Chaos	Failure injection, resilience validation
Infrastructure	Queue, workers, Docker, Kubernetes
Evolution	Cycle control, weakness detection, self-improvement
Quick Start
```bash
cp .env.example .env
# Edit .env with your GitHub token
make install
make run
```
Docker
```bash
docker-compose up -d
```
Run Tests
```bash
make test
```
Evolution Loop
Every cycle:
Identifies weakest component
Simulates adversarial bypass
Improves detection rules
Logs measurable delta
Safety
No raw secrets stored or logged ever
Human-in-the-loop for all disclosures
Append-only audit trail
Policy enforcer on all outputs
