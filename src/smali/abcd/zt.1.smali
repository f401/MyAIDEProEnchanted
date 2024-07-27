.class Labcd/zt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bt;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Bt;


# direct methods
.method constructor <init>(Labcd/Bt;)V
    .registers 2

    iput-object p1, p0, Labcd/zt;->j6:Labcd/Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/tt;Labcd/tt;)V
    .registers 5

    new-instance v0, Labcd/Bt$a;

    iget-object v1, p0, Labcd/zt;->j6:Labcd/Bt;

    invoke-direct {v0, v1, p1}, Labcd/Bt$a;-><init>(Labcd/Bt;Labcd/tt;)V

    invoke-virtual {v0}, Labcd/Bt$a;->j6()V

    return-void
.end method
