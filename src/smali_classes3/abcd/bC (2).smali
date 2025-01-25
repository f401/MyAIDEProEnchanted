.class Labcd/bC;
.super Labcd/FE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/cC$a;->j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/io/File;

.field final j6:Labcd/cC$a;


# direct methods
.method constructor <init>(Labcd/cC$a;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Labcd/bC;->j6:Labcd/cC$a;

    iput-object p2, p0, Labcd/bC;->DW:Ljava/io/File;

    invoke-direct {p0}, Labcd/FE;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-object v0, p0, Labcd/bC;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public FH()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6()[B
    .registers 2

    new-instance v0, Labcd/cD;

    invoke-direct {v0}, Labcd/cD;-><init>()V

    throw v0
.end method

.method public v5()Labcd/JE;
    .registers 7

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/bC;->DW:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    new-instance v3, Labcd/JE$a;

    invoke-virtual {p0}, Labcd/bC;->FH()I

    move-result v4

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v1, v2, v5}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V

    return-object v3
.end method
