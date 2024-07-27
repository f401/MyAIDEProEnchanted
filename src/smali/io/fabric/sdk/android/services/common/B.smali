.class Lio/fabric/sdk/android/services/common/B;
.super Labcd/iz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/SafeToast;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final Hw:Lio/fabric/sdk/android/services/common/SafeToast;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .registers 2

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/B;->Hw:Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-direct {p0}, Labcd/iz;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/B;->Hw:Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/SafeToast;->j6(Lio/fabric/sdk/android/services/common/SafeToast;)V

    return-void
.end method
