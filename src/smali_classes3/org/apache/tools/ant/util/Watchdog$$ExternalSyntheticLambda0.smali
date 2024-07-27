.class public final synthetic Lorg/apache/tools/ant/util/Watchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/Watchdog;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/Watchdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/Watchdog$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/Watchdog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/Watchdog$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/Watchdog;

    check-cast p1, Lorg/apache/tools/ant/util/TimeoutObserver;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/Watchdog;->lambda$fireTimeoutOccured$0$Watchdog(Lorg/apache/tools/ant/util/TimeoutObserver;)V

    return-void
.end method
