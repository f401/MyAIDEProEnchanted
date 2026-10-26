.class Labcd/dC;
.super Labcd/FE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/cC$d;->j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/cC$d;


# direct methods
.method constructor <init>(Labcd/cC$d;)V
    .locals 0

    iput-object p1, p0, Labcd/dC;->j6:Labcd/cC$d;

    invoke-direct {p0}, Labcd/FE;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()J
    .locals 2

    iget-object v0, p0, Labcd/dC;->j6:Labcd/cC$d;

    invoke-static {v0}, Labcd/cC$d;->j6(Labcd/cC$d;)Labcd/_J;

    move-result-object v0

    invoke-virtual {v0}, Labcd/_J;->j3()J

    move-result-wide v0

    return-wide v0
.end method

.method public FH()I
    .locals 1

    iget-object v0, p0, Labcd/dC;->j6:Labcd/cC$d;

    invoke-static {v0}, Labcd/cC$d;->j6(Labcd/cC$d;)Labcd/_J;

    move-result-object v0

    invoke-virtual {v0}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v0

    return v0
.end method

.method public Hw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j6()[B
    .locals 1

    new-instance v0, Labcd/cD;

    invoke-direct {v0}, Labcd/cD;-><init>()V

    throw v0
.end method

.method public v5()Labcd/JE;
    .locals 6

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Labcd/dC;->j6:Labcd/cC$d;

    invoke-static {v1}, Labcd/cC$d;->j6(Labcd/cC$d;)Labcd/_J;

    move-result-object v1

    invoke-virtual {v1}, Labcd/_J;->a8()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Labcd/JE$a;

    invoke-virtual {p0}, Labcd/dC;->FH()I

    move-result v2

    invoke-virtual {p0}, Labcd/dC;->DW()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5, v0}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V

    return-object v1
.end method
