.class public final synthetic Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/property/ParseProperties;

.field public final f$1:Ljava/lang/String;

.field public final f$2:Ljava/text/ParsePosition;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/property/ParseProperties;Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/property/ParseProperties;

    iput-object p2, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$2:Ljava/text/ParsePosition;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/property/ParseProperties;

    iget-object v1, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;->f$2:Ljava/text/ParsePosition;

    check-cast p1, Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tools/ant/property/ParseProperties;->lambda$parsePropertyName$0$ParseProperties(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/PropertyExpander;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
