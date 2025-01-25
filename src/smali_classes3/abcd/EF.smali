.class Labcd/EF;
.super Ljava/lang/InheritableThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/FF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Labcd/FF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Labcd/FF;
    .registers 4

    new-instance v0, Labcd/FF;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/FF;-><init>(Ljava/util/Locale;Labcd/FF;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/EF;->initialValue()Labcd/FF;

    move-result-object v0

    return-object v0
.end method
