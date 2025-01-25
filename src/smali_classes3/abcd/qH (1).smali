.class public Labcd/qH;
.super Ljava/lang/Object;


# instance fields
.field private j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Labcd/UE;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/qH;->j6:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public j6(I)Labcd/pH;
    .registers 7

    if-ltz p1, :cond_29

    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Labcd/qH;->j6:Ljava/io/File;

    invoke-static {v1}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_27

    array-length v2, v1

    invoke-static {v1, v2}, Labcd/IK;->we([BI)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-gez v2, :cond_13

    return-object v0

    :cond_13
    invoke-static {v1, v2}, Labcd/IK;->we([BI)I

    move-result v2

    if-ne p1, v4, :cond_24

    if-gez v2, :cond_1c

    goto :goto_1e

    :cond_1c
    add-int/lit8 v3, v2, 0x2

    :goto_1e
    new-instance p1, Labcd/pH;

    invoke-direct {p1, v1, v3}, Labcd/pH;-><init>([BI)V

    return-object p1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :catch_27
    move-exception p1

    return-object v0

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method
