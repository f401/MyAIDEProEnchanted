.class Labcd/ct;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/dt;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/dt;


# direct methods
.method constructor <init>(Labcd/dt;)V
    .registers 2

    iput-object p1, p0, Labcd/ct;->j6:Labcd/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/tt;Labcd/tt;)V
    .registers 3

    new-instance p2, Labcd/bt;

    invoke-direct {p2, p0}, Labcd/bt;-><init>(Labcd/ct;)V

    invoke-virtual {p1, p2}, Labcd/tt;->j6(Labcd/vt$a;)V

    return-void
.end method
