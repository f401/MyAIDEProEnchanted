.class Labcd/Xm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Nr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zm;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Zm;

.field final j6:Labcd/au;


# direct methods
.method constructor <init>(Labcd/Zm;Labcd/au;)V
    .registers 3

    iput-object p1, p0, Labcd/Xm;->DW:Labcd/Zm;

    iput-object p2, p0, Labcd/Xm;->j6:Labcd/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Nr;)V
    .registers 4

    iget-object v0, p0, Labcd/Xm;->DW:Labcd/Zm;

    invoke-static {v0, p1}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Xm;->j6:Labcd/au;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    :cond_0
    return-void
.end method
