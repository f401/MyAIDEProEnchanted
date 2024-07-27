.class Labcd/rI$a;
.super Labcd/rI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/rI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/rI;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/rI$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/rI$a;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/rI$a;->DW:Ljava/lang/String;

    iput-object p2, p0, Labcd/rI$a;->FH:Ljava/lang/String;

    return-void
.end method

.method j6(Ljava/net/HttpURLConnection;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/rI$a;->DW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/rI$a;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Labcd/kK;->j6([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Authorization"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
