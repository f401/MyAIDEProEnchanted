.class Lcom/crashlytics/android/core/X;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W$h;->j6()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W$h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W$h;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/X;->j6:Lcom/crashlytics/android/core/W$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/X;->j6:Lcom/crashlytics/android/core/W$h;

    invoke-static {v0}, Lcom/crashlytics/android/core/W$h;->j6(Lcom/crashlytics/android/core/W$h;)Lcom/crashlytics/android/core/Ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/Ea;->j6(Z)V

    return-void
.end method
