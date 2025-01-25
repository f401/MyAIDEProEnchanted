.class public Ltv/ouya/console/api/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ltv/ouya/console/api/i$a;

.field private j6:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ltv/ouya/console/api/i$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltv/ouya/console/api/i$b;->j6:Z

    iput-object p2, p0, Ltv/ouya/console/api/i$b;->DW:Ljava/lang/String;

    iput-object p3, p0, Ltv/ouya/console/api/i$b;->FH:Ltv/ouya/console/api/i$a;

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Ltv/ouya/console/api/i$b;->j6:Z

    return v0
.end method
