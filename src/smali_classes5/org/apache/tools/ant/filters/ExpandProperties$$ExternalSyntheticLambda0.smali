.class public final synthetic Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# instance fields
.field public final f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
