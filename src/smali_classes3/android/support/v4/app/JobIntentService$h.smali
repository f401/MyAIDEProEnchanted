.class abstract Landroid/support/v4/app/JobIntentService$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation


# instance fields
.field DW:Z

.field FH:I

.field final j6:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$h;->j6:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public FH()V
    .registers 1

    return-void
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method j6(I)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$h;->DW:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$h;->DW:Z

    iput p1, p0, Landroid/support/v4/app/JobIntentService$h;->FH:I

    goto :goto_e

    :cond_a
    iget v0, p0, Landroid/support/v4/app/JobIntentService$h;->FH:I

    if-ne v0, p1, :cond_f

    :goto_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given job ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different than previous "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v4/app/JobIntentService$h;->FH:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
