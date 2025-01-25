.class Labcd/bt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ct;->j6(Labcd/tt;Labcd/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/ct;


# direct methods
.method constructor <init>(Labcd/ct;)V
    .registers 2

    iput-object p1, p0, Labcd/bt;->j6:Labcd/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 3

    iget-object v0, p0, Labcd/bt;->j6:Labcd/ct;

    iget-object v0, v0, Labcd/ct;->j6:Labcd/dt;

    invoke-static {v0, p1}, Labcd/dt;->j6(Labcd/dt;Labcd/vt;)V

    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 2

    return-void
.end method
