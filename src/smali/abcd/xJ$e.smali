.class Labcd/xJ$e;
.super Labcd/eI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final ro:Labcd/xJ;


# direct methods
.method constructor <init>(Labcd/xJ;Ljava/io/InputStream;)V
    .registers 4

    iput-object p1, p0, Labcd/xJ$e;->ro:Labcd/xJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/cI;->Ws:Z

    sget-object v0, Labcd/TK;->j6:Labcd/TK;

    invoke-virtual {p0, p2, v0}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/cI;->J8:Z

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Labcd/xJ$d;

    iget-object v1, p0, Labcd/xJ$e;->ro:Labcd/xJ;

    const-string v2, "git-upload-pack"

    invoke-direct {v0, v1, v2}, Labcd/xJ$d;-><init>(Labcd/xJ;Ljava/lang/String;)V

    iget-object v1, v0, Labcd/xJ$d;->v5:Labcd/cL;

    iget-object v0, v0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    invoke-virtual {p0, v1, v0}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-super {p0, p1, p2, p3}, Labcd/eI;->DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V

    return-void
.end method
