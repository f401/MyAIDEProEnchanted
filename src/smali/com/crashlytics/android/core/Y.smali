.class Lcom/crashlytics/android/core/Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W$h;->j6()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W$h;

.field final j6:Lcom/crashlytics/android/core/n;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W$h;Lcom/crashlytics/android/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/core/Y;->DW:Lcom/crashlytics/android/core/W$h;

    iput-object p2, p0, Lcom/crashlytics/android/core/Y;->j6:Lcom/crashlytics/android/core/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/Y;->j6:Lcom/crashlytics/android/core/n;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/n;->FH()V

    return-void
.end method
