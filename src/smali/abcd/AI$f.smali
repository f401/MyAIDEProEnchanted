.class public Labcd/AI$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field DW:I

.field FH:Labcd/AI$f;

.field j6:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()J
    .locals 2

    iget-wide v0, p0, Labcd/AI$f;->j6:J

    return-wide v0
.end method

.method public j6(I)V
    .locals 0

    iput p1, p0, Labcd/AI$f;->DW:I

    return-void
.end method
