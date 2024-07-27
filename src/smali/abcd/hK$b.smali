.class Labcd/hK$b;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final FH:Labcd/fK;

.field private final Hw:[B


# direct methods
.method private constructor <init>(Labcd/fK;)V
    .registers 3

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput-object p1, p0, Labcd/hK$b;->FH:Labcd/fK;

    iget-object v0, p0, Labcd/hK$b;->FH:Labcd/fK;

    iget-object v0, v0, Labcd/fK;->Hw:[B

    iput-object v0, p0, Labcd/hK$b;->Hw:[B

    return-void
.end method

.method synthetic constructor <init>(Labcd/fK;Labcd/hK$b;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/hK$b;-><init>(Labcd/fK;)V

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/hK$b;->FH:Labcd/fK;

    invoke-virtual {v0}, Labcd/fK;->j6()Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 4

    iget-object v0, p0, Labcd/hK$b;->Hw:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Labcd/YJ;->j6([BI)I

    move-result v0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Labcd/sD;->j6:Labcd/sD;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAST_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/hK$b;->FH:Labcd/fK;

    invoke-virtual {v1}, Labcd/fK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
