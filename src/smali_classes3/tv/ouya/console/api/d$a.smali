.class Ltv/ouya/console/api/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public DW:I

.field public FH:Z

.field final Hw:Ltv/ouya/console/api/d;

.field public j6:I


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/d;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/d$a;->Hw:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Ltv/ouya/console/api/d$a;->j6:I

    iput p1, p0, Ltv/ouya/console/api/d$a;->DW:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltv/ouya/console/api/d$a;->FH:Z

    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/d;Ltv/ouya/console/api/c;)V
    .registers 3

    invoke-direct {p0, p1}, Ltv/ouya/console/api/d$a;-><init>(Ltv/ouya/console/api/d;)V

    return-void
.end method
