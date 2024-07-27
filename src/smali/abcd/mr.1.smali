.class Labcd/mr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->u7(Labcd/yr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/xr;


# direct methods
.method constructor <init>(Labcd/xr;)V
    .registers 2

    iput-object p1, p0, Labcd/mr;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(II)I
    .registers 4

    iget-object v0, p0, Labcd/mr;->j6:Labcd/xr;

    invoke-static {v0}, Labcd/xr;->j6(Labcd/xr;)Labcd/Gr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/Gr;->j6(II)I

    move-result v0

    return v0
.end method
