.class Labcd/MG;
.super Labcd/JE$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/OG;->v5()Labcd/JE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final Hw:Labcd/OG;

.field private final VH:Ljava/io/File;

.field private final Zo:Labcd/wH;

.field private final gn:Labcd/yE;

.field private final v5:Labcd/YG;


# direct methods
.method constructor <init>(Labcd/OG;IJLjava/io/InputStream;Labcd/YG;Labcd/wH;Ljava/io/File;Labcd/yE;)V
    .registers 10

    iput-object p1, p0, Labcd/MG;->Hw:Labcd/OG;

    iput-object p6, p0, Labcd/MG;->v5:Labcd/YG;

    iput-object p7, p0, Labcd/MG;->Zo:Labcd/wH;

    iput-object p8, p0, Labcd/MG;->VH:Ljava/io/File;

    iput-object p9, p0, Labcd/MG;->gn:Labcd/yE;

    invoke-direct {p0, p2, p3, p4, p5}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    invoke-super {p0}, Labcd/JE$a;->close()V

    iget-object v0, p0, Labcd/MG;->v5:Labcd/YG;

    invoke-virtual {v0}, Labcd/YG;->Hw()V

    iget-object v0, p0, Labcd/MG;->Zo:Labcd/wH;

    invoke-virtual {v0}, Labcd/wH;->FH()V

    iget-object v0, p0, Labcd/MG;->Hw:Labcd/OG;

    invoke-static {v0}, Labcd/OG;->j6(Labcd/OG;)Labcd/GG;

    move-result-object v0

    iget-object v1, p0, Labcd/MG;->VH:Ljava/io/File;

    iget-object v2, p0, Labcd/MG;->gn:Labcd/yE;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Labcd/GG;->j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;

    return-void
.end method
