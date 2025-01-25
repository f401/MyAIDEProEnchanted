.class public Lorg/apache/tools/ant/PropertyHelper;
.super Ljava/lang/Object;
.source "PropertyHelper.java"

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/PropertyHelper$Delegate;,
        Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;,
        Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;,
        Lorg/apache/tools/ant/PropertyHelper$PropertySetter;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

.field private static final FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

.field private static final SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

.field private static final TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;


# instance fields
.field private final delegates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inheritedProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/tools/ant/PropertyHelper;

.field private project:Lorg/apache/tools/ant/Project;

.field private final properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final userProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    .line 197
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda1;

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

    .line 217
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

    .line 237
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$2;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    .line 267
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    .line 273
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 274
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 275
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 276
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 277
    return-void
.end method

.method private evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z
    .registers 3

    .line 1204
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_b

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1208
    :goto_a
    return v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected static getDelegateInterfaces(Lorg/apache/tools/ant/PropertyHelper$Delegate;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;>;"
        }
    .end annotation

    .line 1145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 1147
    :goto_a
    if-eqz v1, :cond_2a

    .line 1148
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v4, :cond_24

    aget-object v5, v3, v0

    .line 1149
    const-class v6, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1150
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1153
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    .line 1155
    :cond_2a
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1156
    return-object v2
.end method

.method public static getProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 294
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method public static getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;
    .registers 3

    const-class v0, Lorg/apache/tools/ant/PropertyHelper;

    monitor-enter v0

    .line 394
    const/4 v0, 0x0

    .line 395
    if-eqz p0, :cond_e

    .line 396
    :try_start_6
    const-string v0, "ant.PropertyHelper"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/PropertyHelper;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_27

    .line 398
    :cond_e
    if-eqz v0, :cond_14

    .line 399
    const-class v1, Lorg/apache/tools/ant/PropertyHelper;

    monitor-exit v1

    .line 409
    :goto_13
    return-object v0

    .line 402
    :cond_14
    :try_start_14
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper;-><init>()V

    .line 403
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/PropertyHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 405
    if-eqz p0, :cond_23

    .line 406
    const-string v1, "ant.PropertyHelper"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 409
    :cond_23
    const-class v1, Lorg/apache/tools/ant/PropertyHelper;

    monitor-exit v1

    goto :goto_13

    .line 393
    :catchall_27
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/PropertyHelper;

    monitor-exit v1

    throw v0
.end method

.method static synthetic lambda$getPropertyNames$2(Ljava/util/Set;Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;)V
    .registers 3

    .line 865
    invoke-interface {p1}, Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;
    .registers 6

    .line 199
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_52

    const/16 v1, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_52

    .line 202
    const/16 v1, 0x7b

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_52

    .line 203
    add-int/lit8 v1, v0, 0x2

    .line 205
    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 206
    if-ltz v2, :cond_37

    .line 210
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 211
    if-ne v1, v2, :cond_32

    const-string v0, ""

    .line 213
    :goto_31
    return-object v0

    .line 211
    :cond_32
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 207
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syntax error in property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_52
    const/4 v0, 0x0

    goto :goto_31
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;
    .registers 7

    const/16 v3, 0x24

    .line 219
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1f

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v3, v1, :cond_1f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v3, v1, :cond_1f

    .line 228
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 231
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static nullOrEmpty(Ljava/lang/Object;)Z
    .registers 2

    .line 1192
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/16 v3, 0x24

    .line 1048
    const/4 v0, 0x0

    .line 1051
    :goto_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_75

    .line 1057
    if-lez v1, :cond_12

    .line 1058
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1062
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_22

    .line 1063
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1064
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    .line 1065
    :cond_22
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_46

    .line 1072
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3c

    .line 1074
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1079
    :goto_39
    add-int/lit8 v0, v1, 0x2

    goto :goto_3

    .line 1077
    :cond_3c
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_39

    .line 1082
    :cond_46
    const/16 v0, 0x7d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1083
    if-ltz v0, :cond_5e

    .line 1086
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1087
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1089
    add-int/lit8 v0, v0, 0x1

    .line 1090
    goto :goto_3

    .line 1084
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syntax error in property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1094
    :cond_75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 1095
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1097
    :cond_82
    return-void
.end method

.method public static setNewProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 321
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public static setProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 307
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 309
    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    .line 1167
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 1168
    check-cast p0, Ljava/lang/Boolean;

    .line 1181
    :goto_6
    return-object p0

    .line 1170
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1171
    check-cast p0, Ljava/lang/String;

    .line 1172
    invoke-static {p0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1173
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 1175
    :cond_16
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1176
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1177
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1178
    :cond_2e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 1181
    :cond_31
    const/4 p0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    .registers 7

    .line 1106
    iget-object v3, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    monitor-enter v3

    .line 1107
    :try_start_3
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getDelegateInterfaces(Lorg/apache/tools/ant/PropertyHelper$Delegate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1108
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1109
    if-nez v1, :cond_37

    .line 1110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    :goto_26
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1117
    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1119
    :catchall_34
    move-exception v0

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0

    .line 1113
    :cond_37
    :try_start_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1114
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_26

    .line 1119
    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_34

    .line 1120
    return-void
.end method

.method public containsProperties(Ljava/lang/String;)Z
    .registers 5

    .line 598
    new-instance v0, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 599
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/ParseProperties;->containsProperties(Ljava/lang/String;)Z

    move-result v0

    .line 598
    return v0
.end method

.method public copyInheritedProperties(Lorg/apache/tools/ant/Project;)V
    .registers 7

    .line 1000
    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    monitor-enter v2

    .line 1001
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1002
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/Project;->getUserProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1007
    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 1008
    return-void
.end method

.method public copyUserProperties(Lorg/apache/tools/ant/Project;)V
    .registers 7

    .line 1027
    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    monitor-enter v2

    .line 1028
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1029
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1030
    iget-object v4, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1031
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1034
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 1035
    return-void
.end method

.method protected getDelegates(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">(",
            "Ljava/lang/Class",
            "<TD;>;)",
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1134
    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getExpanders()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;"
        }
    .end annotation

    .line 418
    const-class v0, Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInheritedProperties()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    monitor-enter v1

    .line 953
    :try_start_3
    new-instance v0, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 954
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected getInternalInheritedProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getInternalProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getInternalUserProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNext()Lorg/apache/tools/ant/PropertyHelper;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->next:Lorg/apache/tools/ant/PropertyHelper;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 920
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    monitor-enter v1

    .line 921
    :try_start_3
    new-instance v0, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 922
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    .line 844
    if-nez p1, :cond_4

    .line 854
    :goto_3
    return-object v1

    .line 847
    :cond_4
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    .line 848
    invoke-interface {v0, p1, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_e

    .line 852
    instance-of v2, v0, Lorg/apache/tools/ant/property/NullReturn;

    if-eqz v2, :cond_25

    move-object v0, v1

    :cond_25
    move-object v1, v0

    goto :goto_3

    .line 854
    :cond_27
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyHook(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHook(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_13

    move-object v0, v1

    .line 487
    :cond_12
    :goto_12
    return-object v0

    .line 482
    :cond_13
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_12

    const-string v1, "toString:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 483
    const-string v1, "toString:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getPropertyNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 864
    const-class v1, Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 865
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 866
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 937
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    monitor-enter v1

    .line 938
    :try_start_3
    new-instance v0, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 939
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getUserProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 899
    if-nez p1, :cond_4

    .line 900
    const/4 v0, 0x0

    .line 902
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getUserProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseProperties(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 588
    new-instance v0, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 589
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 588
    return-object v0
.end method

.method public parsePropertyString(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 525
    return-void
.end method

.method public replaceProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_a

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    :cond_a
    check-cast v0, Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 550
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 793
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_21

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ro project property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 798
    :cond_21
    monitor-enter p0

    .line 799
    :try_start_22
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    monitor-exit p0

    .line 803
    return-void

    .line 802
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 776
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    return-void
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 696
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    .line 697
    invoke-interface {v0, p1, p2, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;->setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 715
    :goto_1c
    return-void

    .line 701
    :cond_1d
    monitor-enter p0

    .line 702
    :try_start_1e
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 703
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override ignored for property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 705
    monitor-exit p0

    goto :goto_1c

    .line 714
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_48

    throw v0

    .line 707
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_6c

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting project property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 711
    :cond_6c
    if-eqz p1, :cond_75

    if-eqz p2, :cond_75

    .line 712
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_4b .. :try_end_76} :catchall_48

    goto :goto_1c
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 681
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public setNext(Lorg/apache/tools/ant/PropertyHelper;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/PropertyHelper;->next:Lorg/apache/tools/ant/PropertyHelper;

    .line 365
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    .line 336
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .registers 8

    const/4 v1, 0x1

    .line 634
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    .line 635
    invoke-interface {v0, p1, p2, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;->set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 659
    :goto_1e
    return v0

    .line 639
    :cond_1f
    monitor-enter p0

    .line 641
    :try_start_20
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_48

    if-eqz p3, :cond_48

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override ignored for user property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 646
    :cond_48
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_1e

    .line 648
    :cond_4b
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_94

    if-eqz p3, :cond_94

    .line 649
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 650
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding previous definition of property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 653
    :cond_75
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting project property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 656
    :cond_94
    if-eqz p1, :cond_9d

    if-eqz p2, :cond_9d

    .line 657
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_9d
    monitor-exit p0

    move v0, v1

    goto/16 :goto_1e

    .line 660
    :catchall_a1
    move-exception v0

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_20 .. :try_end_a3} :catchall_a1

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setPropertyHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 455
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/PropertyHelper;->setPropertyHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    move-result v0

    .line 457
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 748
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_21

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ro project property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 752
    :cond_21
    monitor-enter p0

    .line 753
    :try_start_22
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    monitor-exit p0

    .line 756
    return-void

    .line 755
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method public testIfCondition(Ljava/lang/Object;)Z
    .registers 3

    .line 1220
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->nullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public testUnlessCondition(Ljava/lang/Object;)Z
    .registers 3

    .line 1232
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->nullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
