.class public Lorg/apache/tools/ant/types/Commandline$Marker;
.super Ljava/lang/Object;
.source "Commandline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Commandline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Marker"
.end annotation


# instance fields
.field private position:I

.field private prefix:Ljava/lang/String;

.field private realPos:I

.field private suffix:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/types/Commandline;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/Commandline;I)V
    .registers 4

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->this$0:Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->realPos:I

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->prefix:Ljava/lang/String;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->suffix:Ljava/lang/String;

    .line 228
    iput p2, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->position:I

    .line 229
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 5

    .line 239
    iget v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->realPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->this$0:Lorg/apache/tools/ant/types/Commandline;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->access$000(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->this$0:Lorg/apache/tools/ant/types/Commandline;

    .line 241
    invoke-static {v1}, Lorg/apache/tools/ant/types/Commandline;->access$100(Lorg/apache/tools/ant/types/Commandline;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->position:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/Commandline$Marker$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/Commandline$Marker$$ExternalSyntheticLambda0;

    .line 242
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/Commandline$Marker$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/Commandline$Marker$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->realPos:I

    .line 244
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->realPos:I

    return v0

    .line 240
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 254
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->prefix:Ljava/lang/String;

    .line 255
    return-void

    .line 254
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 274
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Marker;->suffix:Ljava/lang/String;

    .line 275
    return-void

    .line 274
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
