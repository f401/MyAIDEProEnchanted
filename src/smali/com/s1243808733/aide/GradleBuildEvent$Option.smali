.class Lcom/s1243808733/aide/GradleBuildEvent$Option;
.super Lcom/s1243808733/util/ItemText;
.source "GradleBuildEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/GradleBuildEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Option"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/GradleBuildEvent;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    .line 249
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$Option;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    .line 250
    invoke-direct {p0, p2, p3}, Lcom/s1243808733/util/ItemText;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
