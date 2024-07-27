.class public Labcd/bH$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/bH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field DW:J

.field final j6:Labcd/uE;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/bH$b;->j6:Labcd/uE;

    return-void
.end method


# virtual methods
.method public j6()J
    .registers 3

    iget-wide v0, p0, Labcd/bH$b;->DW:J

    return-wide v0
.end method
