.class Ltv/ouya/console/api/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public DW:I

.field final FH:Ltv/ouya/console/api/d;

.field public j6:I


# direct methods
.method constructor <init>(Ltv/ouya/console/api/d;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Ltv/ouya/console/api/d$b;->FH:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ltv/ouya/console/api/d$b;->j6:I

    iput v0, p0, Ltv/ouya/console/api/d$b;->DW:I

    return-void
.end method
