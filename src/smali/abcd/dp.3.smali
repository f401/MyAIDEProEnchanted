.class Labcd/dp;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Un$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ep;->DW(Labcd/Kp;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/ep;

.field final j6:Labcd/jp;


# direct methods
.method constructor <init>(Labcd/ep;Labcd/jp;)V
    .registers 3

    iput-object p1, p0, Labcd/dp;->DW:Labcd/ep;

    iput-object p2, p0, Labcd/dp;->j6:Labcd/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/ms;)I
    .registers 3

    iget-object v0, p0, Labcd/dp;->j6:Labcd/jp;

    invoke-virtual {v0, p1}, Labcd/jp;->j6(Labcd/ms;)Labcd/up;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Labcd/up;->we()I

    move-result v0

    goto :goto_0
.end method
