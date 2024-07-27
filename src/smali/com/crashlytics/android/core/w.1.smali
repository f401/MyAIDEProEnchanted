.class Lcom/crashlytics/android/core/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/w;->j6:Lcom/crashlytics/android/core/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/w;->j6:Lcom/crashlytics/android/core/W;

    new-instance v1, Lcom/crashlytics/android/core/W$f;

    invoke-direct {v1}, Lcom/crashlytics/android/core/W$f;-><init>()V

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;)V

    return-void
.end method
