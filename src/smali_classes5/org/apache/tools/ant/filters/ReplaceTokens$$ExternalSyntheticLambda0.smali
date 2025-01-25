.class public final synthetic Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/filters/ReplaceTokens;

.field public final f$1:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/filters/ReplaceTokens;Ljava/util/Properties;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/filters/ReplaceTokens;

    iput-object p2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;->f$1:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/filters/ReplaceTokens;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;->f$1:Ljava/util/Properties;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->lambda$makeTokensFromProperties$0$ReplaceTokens(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method
