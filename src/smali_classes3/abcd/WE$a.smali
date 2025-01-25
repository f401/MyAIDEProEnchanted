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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/WE$a;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Labcd/WE$a;->j6:Ljava/io/File;

    iput-object p2, p0, Labcd/WE$a;->DW:Labcd/pK;

    return-void
.end method

.method private static DW(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Labcd/WE$a;->FH(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v0, "ref: refs/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static DW(Ljava/io/File;Labcd/pK;)Z
    .registers 3

    const-string v0, "objects"

    invoke-virtual {p1, p0, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "refs"

    invoke-virtual {p1, p0, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    new-instance p1, Ljava/io/File;

    const-string v0, "HEAD"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Labcd/WE$a;->DW(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public static FH(Ljava/io/File;Labcd/pK;)Labcd/WE$a;
    .registers 3

    invoke-static {p0, p1}, Labcd/WE$a;->Hw(Ljava/io/File;Labcd/pK;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p0, v0

    :cond_7
    new-instance v0, Labcd/WE$a;

    invoke-direct {v0, p0, p1}, Labcd/WE$a;-><init>(Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method private static FH(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0, v0}, Labcd/BK;->j6(Ljava/io/File;I)[B

    move-result-object p0

    array-length v0, p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v2, v0, -0x1

    aget-byte v3, p0, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_14

    move v0, v2

    :cond_14
    const/4 v2, 0x0

    :try_start_15
    invoke-static {p0, v2, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    return-object v1
.end method

.method public static Hw(Ljava/io/File;Labcd/pK;)Ljava/io/File;
    .registers 6

    invoke-static {p0, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v1, ".git"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, p1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result p1

    if-eqz p1, :cond_53

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_53
    const/4 p0, 0x0

    return-object p0
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

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/WE$a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    check-cast p1, Labcd/WE$a;

    iget-object p1, p1, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Z)Labcd/UE;
    .registers 3

    if-eqz p1, :cond_15

    iget-object p1, p0, Labcd/WE$a;->j6:Ljava/io/File;

    iget-object v0, p0, Labcd/WE$a;->DW:Labcd/pK;

    invoke-static {p1, v0}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_15

    :cond_d
    new-instance p1, Labcd/pD;

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-direct {p1, v0}, Labcd/pD;-><init>(Ljava/io/File;)V

    throw p1

    :cond_15
    :goto_15
    new-instance p1, Labcd/IG;

    iget-object v0, p0, Labcd/WE$a;->j6:Ljava/io/File;

    invoke-direct {p1, v0}, Labcd/IG;-><init>(Ljava/io/File;)V

    return-object p1
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
