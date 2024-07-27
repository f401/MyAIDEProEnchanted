.class public Lorg/objectweb/asm/tree/analysis/SimpleVerifier;
.super Lorg/objectweb/asm/tree/analysis/BasicVerifier;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private final currentClass:Lorg/objectweb/asm/Type;

.field private final currentClassInterfaces:Ljava/util/List;

.field private final currentSuperClass:Lorg/objectweb/asm/Type;

.field private final isInterface:Z

.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->class$java$lang$Object:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .registers 7

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    iput-object p3, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    iput-object p4, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    iput-boolean p5, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .registers 11

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getElementValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const-string v1, "Lnull;"

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0
.end method

.method protected isArrayValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .registers 5

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Lnull;"

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    if-eqz v0, :cond_7

    move v3, v1

    :goto_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->class$java$lang$Object:Ljava/lang/Class;

    :cond_9
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0
.end method

.method protected isInterface(Lorg/objectweb/asm/Type;)Z
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .registers 7

    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const-string v2, "Lnull;"

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 8

    const/16 v4, 0xa

    const/16 v3, 0x9

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_7

    :cond_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_7

    :cond_1
    const-string v2, "Lnull;"

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, p2

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    const-string v2, "Lnull;"

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p1, p2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface(Lorg/objectweb/asm/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    sget-object p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    goto :goto_0

    :cond_7
    sget-object p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_0
.end method

.method public bridge merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4

    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v3, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v0

    if-ge v2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :pswitch_0
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    return-void
.end method
