.class public Labcd/qH;
.super Ljava/lang/Object;


# instance fields
.field private j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Labcd/UE;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logs/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Labcd/qH;->j6:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public j6(I)Labcd/pH;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    :try_start_0
    iget-object v2, p0, Labcd/qH;->j6:Ljava/io/File;

    invoke-static {v2}, Labcd/BK;->j6(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    array-length v2, v4

    invoke-static {v4, v2}, Labcd/IK;->we([BI)I

    move-result v2

    move v3, v0

    :goto_0
    if-gez v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v4, v2}, Labcd/IK;->we([BI)I

    move-result v2

    if-ne p1, v3, :cond_2

    if-gez v2, :cond_1

    :goto_2
    new-instance v1, Labcd/pH;

    invoke-direct {v1, v4, v0}, Labcd/pH;-><init>([BI)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
