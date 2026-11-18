# SKILL SETUP NOTES

Every skill listed here is documented with its source, license, and active adaptations.

## Locations
- Master: `C:\Users\kwakh\.agents`
- Repository: `D:\workflow`
- Global skills: `C:\Users\kwakh\.agents\skills\`
- Project templates: `C:\Users\kwakh\.agents\templates\`

## Source and license record
- Repo: `github.com/mattpocock/skills` @ `5863806dd4e15c63174bee4e7515a4256792ecfa`, license MIT.
- The root `LICENSE` file is preserved in `C:\Users\kwakh\.agents\skills\LICENSE`.
- Upstream skills included:
  - `code-review`
  - `codebase-design`
  - `diagnosing-bugs`
  - `domain-modeling`
  - `grill-with-docs`
  - `handoff`
  - `implement`
  - `implement-spec`
  - `pr`
  - `setup-matt-pocock-skills`
  - `tdd`
  - `to-spec`
  - `to-tickets`

## Adaptations Applied
1. **implement-spec**:
   - Gated Step 3 (draft PR creation) behind explicit user approval.
   - Gated Step 8 (closing tickets and marking PR ready) behind explicit user approval.
   - Removed `disable-model-invocation: true` for automatic triggering across tools.
2. **handoff**:
   - Replaced temporary OS directory path with local durable path (`.scratch/HANDOFF.md` in workspace).
   - Removed `disable-model-invocation: true`.
3. **Automatic Invocation Flags**:
   - Removed `disable-model-invocation: true` across all skills (`grill-with-docs`, `implement`, `setup-matt-pocock-skills`, `to-spec`, `to-tickets`) so they are universally available to all models and tools.
4. **Preserved Custom Helpers**:
   - Retained `tdd/refactoring.md` for refactoring heuristics after green tests.
5. **Verification Skills**:
   - Uses `create-verification-skill` to generate project-specific verification skills (`verify-<app>`) and feature maps on demand.


