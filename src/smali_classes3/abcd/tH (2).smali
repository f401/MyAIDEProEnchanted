.class Labcd/tH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/tH$a;
    }
.end annotation


# instance fields
.field private volatile j6:Labcd/tH$a;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/tH$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Labcd/tH$a;-><init>(I)V

    iput-object v0, p0, Labcd/tH;->j6:Labcd/tH$a;

    return-void
.end method


# virtual methods
.method DW(Labcd/YD;)Z
    .registers 3

    iget-object v0, p0, Labcd/tH;->j6:Labcd/tH$a;

    invoke-virtual {v0, p1}, Labcd/tH$a;->DW(Labcd/YD;)Z

    move-result p1

    return p1
.end method

.method FH(Labcd/YD;)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Labcd/tH;->j6()V

    :cond_9
    return-void
.end method

.method j6()V
    .registers 3

    new-instance v0, Labcd/tH$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Labcd/tH$a;-><init>(I)V

    iput-object v0, p0, Labcd/tH;->j6:Labcd/tH$a;

    return-void
.end method

.method j6(Labcd/YD;)V
    .registers 5

    iget-object v0, p0, Labcd/tH;->j6:Labcd/tH$a;

    invoke-virtual {v0, p1}, Labcd/tH$a;->j6(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Labcd/tH$a;

    iget v0, v0, Labcd/tH$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xb

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v1, v0}, Labcd/tH$a;-><init>(I)V

    invoke-virtual {v1, p1}, Labcd/tH$a;->j6(Labcd/YD;)Z

    iput-object v1, p0, Labcd/tH;->j6:Labcd/tH$a;

    :cond_1c
    return-void
.end method
