.class Lcom/crashlytics/android/core/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/fa;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Lcom/crashlytics/android/core/fa;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/fa;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/y;->DW:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/y;->j6:Lcom/crashlytics/android/core/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lcom/crashlytics/android/core/y;->j6:Lcom/crashlytics/android/core/fa;

    iget-object v0, v0, Lcom/crashlytics/android/core/fa;->j6:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/crashlytics/android/core/y;->DW:Lcom/crashlytics/android/core/W;

    invoke-static {v1}, Lcom/crashlytics/android/core/W;->FH(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_27

    iget-object v3, p0, Lcom/crashlytics/android/core/y;->DW:Lcom/crashlytics/android/core/W;

    invoke-static {v3}, Lcom/crashlytics/android/core/W;->Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;

    move-result-object v4

    invoke-virtual {v4}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_27
    iget-object v1, p0, Lcom/crashlytics/android/core/y;->DW:Lcom/crashlytics/android/core/W;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Ljava/util/Set;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/y;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
