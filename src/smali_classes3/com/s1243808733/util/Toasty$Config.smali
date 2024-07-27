.class public Lcom/s1243808733/util/Toasty$Config;
.super Ljava/lang/Object;
.source "Toasty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/Toasty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private allowQueue:Z

.field private textSize:I

.field private tintIcon:Z

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Toasty;->access$L1000001()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/Toasty$Config;->typeface:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/s1243808733/util/Toasty;->access$L1000002()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/util/Toasty$Config;->textSize:I

    invoke-static {}, Lcom/s1243808733/util/Toasty;->access$L1000003()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/util/Toasty$Config;->tintIcon:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/util/Toasty$Config;->allowQueue:Z

    return-void
.end method

.method public static getInstance()Lcom/s1243808733/util/Toasty$Config;
    .registers 1
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 466
    new-instance v0, Lcom/s1243808733/util/Toasty$Config;

    invoke-direct {v0}, Lcom/s1243808733/util/Toasty$Config;-><init>()V

    return-object v0
.end method

.method public static reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 470
    invoke-static {}, Lcom/s1243808733/util/Toasty;->access$L1000000()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000001(Landroid/graphics/Typeface;)V

    .line 471
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000002(I)V

    .line 472
    invoke-static {v1}, Lcom/s1243808733/util/Toasty;->access$S1000003(Z)V

    .line 473
    invoke-static {v1}, Lcom/s1243808733/util/Toasty;->access$S1000004(Z)V

    return-void
.end method


# virtual methods
.method public allowQueue(Z)Lcom/s1243808733/util/Toasty$Config;
    .registers 2
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 496
    iput-boolean p1, p0, Lcom/s1243808733/util/Toasty$Config;->allowQueue:Z

    .line 497
    return-object p0
.end method

.method public apply()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/s1243808733/util/Toasty$Config;->typeface:Landroid/graphics/Typeface;

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000001(Landroid/graphics/Typeface;)V

    .line 502
    iget v0, p0, Lcom/s1243808733/util/Toasty$Config;->textSize:I

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000002(I)V

    .line 503
    iget-boolean v0, p0, Lcom/s1243808733/util/Toasty$Config;->tintIcon:Z

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000003(Z)V

    .line 504
    iget-boolean v0, p0, Lcom/s1243808733/util/Toasty$Config;->allowQueue:Z

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->access$S1000004(Z)V

    return-void
.end method

.method public setTextSize(I)Lcom/s1243808733/util/Toasty$Config;
    .registers 2
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 484
    iput p1, p0, Lcom/s1243808733/util/Toasty$Config;->textSize:I

    .line 485
    return-object p0
.end method

.method public setToastTypeface(Landroid/graphics/Typeface;)Lcom/s1243808733/util/Toasty$Config;
    .registers 2
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/s1243808733/util/Toasty$Config;->typeface:Landroid/graphics/Typeface;

    .line 479
    return-object p0
.end method

.method public tintIcon(Z)Lcom/s1243808733/util/Toasty$Config;
    .registers 2
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 490
    iput-boolean p1, p0, Lcom/s1243808733/util/Toasty$Config;->tintIcon:Z

    .line 491
    return-object p0
.end method
