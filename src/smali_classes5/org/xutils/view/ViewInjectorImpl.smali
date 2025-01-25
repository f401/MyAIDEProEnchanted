.class public final Lorg/xutils/view/ViewInjectorImpl;
.super Ljava/lang/Object;
.source "ViewInjectorImpl.java"

# interfaces
.implements Lorg/xutils/ViewInjector;


# static fields
.field private static final IGNORED:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static volatile instance:Lorg/xutils/view/ViewInjectorImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    .line 40
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    :try_start_16
    const-string v1, "android.support.v4.app.Fragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "android.support.v4.app.FragmentActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_30

    .line 50
    :goto_28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->lock:Ljava/lang/Object;

    return-void

    .line 46
    :catchall_30
    move-exception v0

    goto :goto_28
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/xutils/view/annotation/ContentView;"
        }
    .end annotation

    .line 123
    if-eqz p0, :cond_16

    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 124
    :cond_16
    const/4 v0, 0x0

    .line 130
    :cond_17
    :goto_17
    return-object v0

    .line 126
    :cond_18
    const-class v0, Lorg/xutils/view/annotation/ContentView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/annotation/ContentView;

    .line 127
    if-nez v0, :cond_17

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v0

    goto :goto_17
.end method

.method private static injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/view/ViewFinder;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 136
    if-eqz p1, :cond_17

    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 211
    :cond_17
    return-void

    .line 141
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_a6

    array-length v0, v3

    if-lez v0, :cond_a6

    .line 146
    array-length v4, v3

    move v1, v2

    :goto_2a
    if-ge v1, v4, :cond_a6

    aget-object v5, v3, v1

    .line 148
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 149
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_52

    .line 151
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_52

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_52

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 146
    :cond_52
    :goto_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 157
    :cond_56
    const-class v0, Lorg/xutils/view/annotation/ViewInject;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/annotation/ViewInject;

    .line 158
    if-eqz v0, :cond_52

    .line 160
    :try_start_60
    invoke-interface {v0}, Lorg/xutils/view/annotation/ViewInject;->value()I

    move-result v6

    invoke-interface {v0}, Lorg/xutils/view/annotation/ViewInject;->parentId()I

    move-result v0

    invoke-virtual {p2, v6, v0}, Lorg/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_7f

    .line 162
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_76

    goto :goto_52

    .line 168
    :catchall_76
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 165
    :cond_7f
    :try_start_7f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid @ViewInject for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a6
    .catchall {:try_start_7f .. :try_end_a6} :catchall_76

    .line 176
    :cond_a6
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 177
    if-eqz v6, :cond_17

    array-length v0, v6

    if-lez v0, :cond_17

    .line 178
    array-length v7, v6

    move v3, v2

    :goto_b1
    if-ge v3, v7, :cond_17

    aget-object v8, v6, v3

    .line 180
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 181
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 178
    :cond_c9
    :goto_c9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b1

    .line 186
    :cond_cd
    const-class v0, Lorg/xutils/view/annotation/Event;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/annotation/Event;

    .line 187
    if-eqz v0, :cond_c9

    .line 190
    :try_start_d7
    invoke-interface {v0}, Lorg/xutils/view/annotation/Event;->value()[I

    move-result-object v9

    .line 191
    invoke-interface {v0}, Lorg/xutils/view/annotation/Event;->parentId()[I

    move-result-object v10

    .line 192
    if-nez v10, :cond_102

    move v1, v2

    :goto_e2
    move v5, v2

    .line 194
    :goto_e3
    array-length v4, v9
    :try_end_e4
    .catchall {:try_start_d7 .. :try_end_e4} :catchall_10f

    if-ge v5, v4, :cond_c9

    .line 195
    aget v4, v9, v5

    .line 196
    if-lez v4, :cond_fe

    .line 197
    :try_start_ea
    new-instance v11, Lorg/xutils/view/ViewInfo;

    invoke-direct {v11}, Lorg/xutils/view/ViewInfo;-><init>()V

    .line 198
    iput v4, v11, Lorg/xutils/view/ViewInfo;->value:I
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_10f

    .line 199
    if-le v1, v5, :cond_104

    aget v4, v10, v5

    :goto_f5
    :try_start_f5
    iput v4, v11, Lorg/xutils/view/ViewInfo;->parentId:I
    :try_end_f7
    .catchall {:try_start_f5 .. :try_end_f7} :catchall_106

    .line 200
    const/4 v4, 0x1

    :try_start_f8
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 201
    invoke-static {p2, v11, v0, p0, v8}, Lorg/xutils/view/EventListenerManager;->addEventMethod(Lorg/xutils/view/ViewFinder;Lorg/xutils/view/ViewInfo;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 194
    :cond_fe
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e3

    .line 192
    :cond_102
    array-length v1, v10
    :try_end_103
    .catchall {:try_start_f8 .. :try_end_103} :catchall_10f

    goto :goto_e2

    :cond_104
    move v4, v2

    .line 199
    goto :goto_f5

    .line 204
    :catchall_106
    move-exception v0

    .line 205
    :goto_107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c9

    .line 204
    :catchall_10f
    move-exception v0

    goto :goto_107
.end method

.method public static registerInstance()V
    .registers 2

    .line 57
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v0, :cond_13

    .line 58
    sget-object v1, Lorg/xutils/view/ViewInjectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_7
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v0, :cond_12

    .line 60
    new-instance v0, Lorg/xutils/view/ViewInjectorImpl;

    invoke-direct {v0}, Lorg/xutils/view/ViewInjectorImpl;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    .line 62
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 64
    :cond_13
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setViewInjector(Lorg/xutils/ViewInjector;)V

    .line 65
    return-void

    .line 62
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public inject(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 102
    :try_start_5
    invoke-static {v2}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_16

    .line 104
    invoke-interface {v1}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v1

    .line 105
    if-lez v1, :cond_16

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1f

    move-result-object v0

    .line 114
    :cond_16
    :goto_16
    new-instance v1, Lorg/xutils/view/ViewFinder;

    invoke-direct {v1, v0}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v2, v1}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 116
    return-object v0

    .line 109
    :catchall_1f
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public inject(Landroid/app/Activity;)V
    .registers 5

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    :try_start_4
    invoke-static {v1}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    .line 79
    invoke-interface {v0}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v0

    .line 80
    if-lez v0, :cond_13

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1c

    .line 88
    :cond_13
    :goto_13
    new-instance v0, Lorg/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v1, v0}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 89
    return-void

    .line 84
    :catchall_1c
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public inject(Landroid/view/View;)V
    .registers 4

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/ViewFinder;

    invoke-direct {v1, p1}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 70
    return-void
.end method

.method public inject(Ljava/lang/Object;Landroid/view/View;)V
    .registers 5

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/ViewFinder;

    invoke-direct {v1, p2}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 94
    return-void
.end method
