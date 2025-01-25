.class public Labcd/kH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/pK;

.field private final j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".keep"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Labcd/kH;->j6:Ljava/io/File;

    iput-object p2, p0, Labcd/kH;->DW:Labcd/pK;

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 2

    iget-object v0, p0, Labcd/kH;->j6:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1c
    new-instance v1, Labcd/WG;

    iget-object v2, p0, Labcd/kH;->j6:Ljava/io/File;

    iget-object v3, p0, Labcd/kH;->DW:Labcd/pK;

    invoke-direct {v1, v2, v3}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v2

    if-nez v2, :cond_2c

    return v0

    :cond_2c
    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Labcd/WG;->j6([B)V

    invoke-virtual {v1}, Labcd/WG;->j6()Z

    move-result p1

    return p1
.end method
