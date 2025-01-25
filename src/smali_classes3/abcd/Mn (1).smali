.class public Labcd/Mn;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FH:Z

.field private static j6:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static DW(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error with optimize list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :goto_35
    throw p0

    :goto_36
    goto :goto_35
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Labcd/Mn;->FH:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p0, :cond_12

    if-nez p1, :cond_a

    goto :goto_12

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_12
    if-eqz p0, :cond_1a

    invoke-static {p0}, Labcd/Mn;->DW(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p0

    sput-object p0, Labcd/Mn;->j6:Ljava/util/HashSet;

    :cond_1a
    if-eqz p1, :cond_22

    invoke-static {p1}, Labcd/Mn;->DW(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p0

    sput-object p0, Labcd/Mn;->DW:Ljava/util/HashSet;

    :cond_22
    const/4 p0, 0x1

    sput-boolean p0, Labcd/Mn;->FH:Z

    return-void
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Labcd/Mn;->j6:Ljava/util/HashSet;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    sget-object v0, Labcd/Mn;->DW:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_14
    return v1
.end method
