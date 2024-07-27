.class public Labcd/WE$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/WE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/WE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/pK;

.field private final j6:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/WE$a;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    iput-object p2, p0, Labcd/WE$a;->DW:Labcd/pK;

    return-void
.end method

.method private static DW(Ljava/io/File;)Z
    .registers 3

    invoke-static {p0}, Labcd/WE$a;->FH(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ref: refs/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DW(Ljava/io/File;Labcd/pK;)Z
    .registers 4

    const-string v0, "objects"

    invoke-virtual {p1, p0, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "refs"

    invoke-virtual {p1, p0, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/WE$a;->DW(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static FH(Ljava/io/File;Labcd/pK;)Labcd/WE$a;
    .registers 3

    invoke-static {p0, p1}, Labcd/WE$a;->Hw(Ljava/io/File;Labcd/pK;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    new-instance v0, Labcd/WE$a;

    invoke-direct {v0, p0, p1}, Labcd/WE$a;-><init>(Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method private static FH(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x1000

    :try_start_0
    invoke-static {p0, v1}, Labcd/BK;->j6(Ljava/io/File;I)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v1}, Labcd/IK;->j6([BII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static Hw(Ljava/io/File;Labcd/pK;)Ljava/io/File;
    .registers 6

    invoke-static {p0, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".git"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, ".git"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".git"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".git"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static j6(Ljava/io/File;Labcd/pK;)Labcd/WE$a;
    .registers 3

    new-instance v0, Labcd/WE$a;

    invoke-direct {v0, p0, p1}, Labcd/WE$a;-><init>(Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method private static j6(Ljava/io/File;)Ljava/io/File;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/WE$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    check-cast p1, Labcd/WE$a;

    iget-object v1, p1, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Z)Labcd/UE;
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    iget-object v1, p0, Labcd/WE$a;->DW:Labcd/pK;

    invoke-static {v0, v1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Labcd/IG;

    iget-object v1, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/IG;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_1
    new-instance v0, Labcd/pD;

    iget-object v1, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/pD;-><init>(Ljava/io/File;)V

    throw v0
.end method

.method public final j6()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
