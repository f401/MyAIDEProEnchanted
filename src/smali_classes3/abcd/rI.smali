.class abstract Labcd/rI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/rI$a;,
        Labcd/rI$b;,
        Labcd/rI$c;
    }
.end annotation


# static fields
.field static final j6:Labcd/rI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/rI$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/rI$c;-><init>(Labcd/rI$c;)V

    sput-object v0, Labcd/rI;->j6:Labcd/rI;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DW(Ljava/net/HttpURLConnection;)Labcd/rI;
    .registers 4

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_45

    :cond_f
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1a

    sget-object p0, Labcd/rI;->j6:Labcd/rI;

    return-object p0

    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance p0, Labcd/rI$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/rI$a;-><init>(Labcd/rI$a;)V

    return-object p0

    :cond_2e
    const-string v2, "Digest"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Labcd/rI$b;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Labcd/rI$b;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_42
    sget-object p0, Labcd/rI;->j6:Labcd/rI;

    return-object p0

    :cond_45
    :goto_45
    sget-object p0, Labcd/rI;->j6:Labcd/rI;

    return-object p0
.end method


# virtual methods
.method abstract j6(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract j6(Ljava/net/HttpURLConnection;)V
.end method

.method j6(Labcd/HJ;Labcd/kI;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_39

    new-instance v2, Labcd/jI$e;

    invoke-direct {v2}, Labcd/jI$e;-><init>()V

    new-instance v3, Labcd/jI$c;

    invoke-direct {v3}, Labcd/jI$c;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Labcd/jI;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-virtual {p2, v5}, Labcd/kI;->j6([Labcd/jI;)Z

    move-result v5

    if-eqz v5, :cond_38

    new-array v4, v4, [Labcd/jI;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {p2, p1, v4}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {v2}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-virtual {v3}, Labcd/jI$a;->FH()[C

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Labcd/jI$a;->DW()V

    goto :goto_44

    :cond_38
    return v1

    :cond_39
    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_44
    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1, p2}, Labcd/rI;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4a
    return v1
.end method
