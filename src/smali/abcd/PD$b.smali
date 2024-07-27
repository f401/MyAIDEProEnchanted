.class final Labcd/PD$b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/PD$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final DW:C

.field private final j6:C


# direct methods
.method constructor <init>(CC)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Labcd/PD$b;->j6:C

    iput-char p2, p0, Labcd/PD$b;->DW:C

    return-void
.end method


# virtual methods
.method public final j6(C)Z
    .registers 3

    iget-char v0, p0, Labcd/PD$b;->j6:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Labcd/PD$b;->DW:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
