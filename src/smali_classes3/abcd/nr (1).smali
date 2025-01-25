.class Labcd/nr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->VH(Labcd/yr;)V
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

    iput-object p1, p0, Labcd/nr;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(II)I
    .registers 3

    sub-int/2addr p1, p2

    return p1
.end method
