.class public final Lorg/apache/tools/ant/IntrospectionHelper$Creator;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# instance fields
.field private final nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

.field private nestedObject:Ljava/lang/Object;

.field private final parent:Ljava/lang/Object;

.field private polyType:Ljava/lang/String;

.field private final project:Lorg/apache/tools/ant/Project;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)V
    .registers 4

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    .line 1310
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    .line 1311
    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    .line 1312
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;Lorg/apache/tools/ant/IntrospectionHelper$1;)V
    .registers 5

    .line 1288
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 5

    .line 1329
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 1330
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    invoke-virtual {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->isPolyMorphic()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1334
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    .line 1336
    if-eqz v0, :cond_34

    .line 1341
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    .line 1342
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_31

    .line 1343
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 1345
    :cond_31
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_33} :catch_7a
    .catch Ljava/lang/InstantiationException; {:try_start_1c .. :try_end_33} :catch_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_33} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_33} :catch_55

    return-object v0

    .line 1337
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1331
    :cond_4d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not allowed to use the polymorphic form for this element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :catch_55
    move-exception v0

    .line 1354
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 1348
    :catch_5b
    move-exception v0

    .line 1349
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-nez v1, :cond_61

    .line 1350
    throw v0

    .line 1352
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1346
    :catch_7a
    move-exception v0

    .line 1347
    :goto_7b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1346
    :catch_81
    move-exception v0

    goto :goto_7b
.end method

.method public getRealObject()Ljava/lang/Object;
    .registers 2

    .line 1362
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    invoke-virtual {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPolyType(Ljava/lang/String;)V
    .registers 2

    .line 1320
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    .line 1321
    return-void
.end method

.method public store()V
    .registers 4

    .line 1371
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->store(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1381
    return-void

    .line 1379
    :catch_a
    move-exception v0

    .line 1380
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 1374
    :catch_10
    move-exception v0

    .line 1375
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 1376
    throw v0

    .line 1378
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1372
    :catch_2f
    move-exception v0

    .line 1373
    :goto_30
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1372
    :catch_36
    move-exception v0

    goto :goto_30
.end method
