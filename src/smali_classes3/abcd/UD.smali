.class public Labcd/UD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/UD$a;
    }
.end annotation


# instance fields
.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/VD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/UD;->j6:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/VD;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/UD;->j6:Ljava/util/List;

    return-void
.end method

.method private static DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;
    .registers 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public j6(Ljava/lang/String;Z)Labcd/UD$a;
    .registers 6

    iget-object v0, p0, Labcd/UD;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Labcd/UD$a;->FH:Labcd/UD$a;

    return-object p1

    :cond_b
    iget-object v0, p0, Labcd/UD;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    const/4 v1, -0x1

    if-gt v0, v1, :cond_19

    sget-object p1, Labcd/UD$a;->FH:Labcd/UD$a;

    return-object p1

    :cond_19
    iget-object v1, p0, Labcd/UD;->j6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/VD;

    invoke-virtual {v1, p1, p2}, Labcd/VD;->j6(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Labcd/VD;->j6()Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p1, Labcd/UD$a;->DW:Labcd/UD$a;

    return-object p1

    :cond_30
    sget-object p1, Labcd/UD$a;->j6:Labcd/UD$a;

    return-object p1

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method public j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/VD;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/UD;->j6:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/io/InputStream;)V
    .registers 5

    invoke-static {p1}, Labcd/UD;->DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Labcd/UD;->j6:Ljava/util/List;

    new-instance v2, Labcd/VD;

    invoke-direct {v2, v0}, Labcd/VD;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
