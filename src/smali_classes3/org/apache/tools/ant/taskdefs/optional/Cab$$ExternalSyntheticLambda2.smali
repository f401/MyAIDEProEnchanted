.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongPredicate;


# instance fields
.field public final f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .registers 6

    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;->f$0:J

    invoke-static {v0, v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->lambda$isUpToDate$1(JJ)Z

    move-result v0

    return v0
.end method
