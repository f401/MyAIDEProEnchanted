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
    .registers 5

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Labcd/rI;->j6:Labcd/rI;

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    sget-object v0, Labcd/rI;->j6:Labcd/rI;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Basic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Labcd/rI$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/rI$a;-><init>(Labcd/rI$a;)V

    goto :goto_0

    :cond_3
    const-string v3, "Digest"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Labcd/rI$b;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/rI$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Labcd/rI;->j6:Labcd/rI;

    goto :goto_0
.end method


# virtual methods
.method abstract j6(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract j6(Ljava/net/HttpURLConnection;)V
.end method

.method j6(Labcd/HJ;Labcd/kI;)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v2, Labcd/jI$e;

    invoke-direct {v2}, Labcd/jI$e;-><init>()V

    new-instance v4, Labcd/jI$c;

    invoke-direct {v4}, Labcd/jI$c;-><init>()V

    new-array v3, v5, [Labcd/jI;

    aput-object v2, v3, v0

    aput-object v4, v3, v1

    invoke-virtual {p2, v3}, Labcd/kI;->j6([Labcd/jI;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v5, [Labcd/jI;

    aput-object v2, v3, v0

    aput-object v4, v3, v1

    invoke-virtual {p2, p1, v3}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Labcd/jI$a;->FH()[C

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Labcd/jI$a;->DW()V

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v2}, Labcd/rI;->j6(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
