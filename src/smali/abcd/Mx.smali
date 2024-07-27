.class final Labcd/Mx;
.super Labcd/Ix;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/Ix;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method
