'World Class
#include "camera.bas"
#include "chunk.bas"
#include "source/ent/player.bas"
type ZaWarudo
    private:
        dim Player1 as Player
        dim LoadedChunk as Chunk
        dim Viewer as Camera
    public:
        declare sub Init()
        declare sub Update()
        declare sub Render()
end type

sub ZaWarudo.Init()
    this.LoadedChunk.Init(0, 0)
    this.Player1.Init(0, 0)
    this.Player1.SetTile(16, 16)
end sub

sub ZaWarudo.Update()
    this.Player1.Update(LoadedChunk)
    this.Viewer.Update(this.Player1.BoundingBox.GetBoxX(), this.Player1.BoundingBox.GetBoxY())
end sub

sub ZaWarudo.Render()
    this.LoadedChunk.Render(this.Viewer)
    this.Player1.Render(this.Viewer)
    dim TestTile1 as Tile
    dim TestTile2 as Tile
    dim TestTile3 as Tile
    print "Player Tile X: "; this.Player1.GetTileX()
    print "Player Tile Y: "; this.Player1.GetTileY()
    print multikey(SC_T)
end sub
