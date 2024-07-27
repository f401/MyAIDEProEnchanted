.class Lcom/crashlytics/android/core/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/Thread;

.field final FH:Ljava/lang/Throwable;

.field final Hw:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iput-object p1, p0, Lcom/crashlytics/android/core/V;->Hw:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/V;->j6:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/V;->DW:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/V;->FH:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/V;->Hw:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/V;->Hw:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/V;->j6:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/V;->DW:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/V;->FH:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
