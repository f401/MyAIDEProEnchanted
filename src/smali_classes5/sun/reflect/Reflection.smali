.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static volatile fieldFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile methodFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-class v1, Lsun/reflect/Reflection;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "fieldFilterMap"

    aput-object v3, v2, v4

    const-string v3, "methodFilterMap"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Ljava/lang/System;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com/security"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sput-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 89
    if-eqz p0, :cond_43

    if-eqz p1, :cond_43

    .line 93
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    return-void

    .line 94
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can not access a member of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with modifiers \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_43
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private static filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;
    .registers 13

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 291
    if-eqz p1, :cond_7

    array-length v0, p0

    if-nez v0, :cond_9

    :cond_7
    move-object v0, p0

    .line 322
    :cond_8
    return-object v0

    .line 295
    :cond_9
    array-length v4, p0

    move v0, v2

    move v3, v2

    :goto_c
    if-ge v3, v4, :cond_28

    aget-object v6, p0, v3

    .line 297
    array-length v7, p1

    move v1, v2

    :goto_12
    if-ge v1, v7, :cond_56

    aget-object v8, p1, v1

    .line 298
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v8, :cond_25

    move v1, v5

    .line 303
    :goto_1d
    if-nez v1, :cond_21

    .line 304
    add-int/lit8 v0, v0, 0x1

    .line 295
    :cond_21
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c

    .line 297
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 307
    :cond_28
    aget-object v1, p0, v2

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Member;

    .line 310
    array-length v6, p0

    move v1, v2

    move v3, v2

    :goto_37
    if-ge v3, v6, :cond_8

    aget-object v7, p0, v3

    .line 312
    array-length v8, p1

    move v4, v2

    :goto_3d
    if-ge v4, v8, :cond_54

    aget-object v9, p1, v4

    .line 313
    invoke-interface {v7}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    if-ne v10, v9, :cond_51

    move v4, v5

    .line 318
    :goto_48
    if-nez v4, :cond_4e

    .line 319
    aput-object v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 312
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_54
    move v4, v2

    goto :goto_48

    :cond_56
    move v1, v2

    goto :goto_1d
.end method

.method public static filterFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 3

    .line 275
    sget-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 279
    :goto_4
    return-object p1

    :cond_5
    sget-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object p1, v0

    goto :goto_4
.end method

.method public static filterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .registers 3

    .line 283
    sget-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 287
    :goto_4
    return-object p1

    :cond_5
    sget-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    move-object p1, v0

    goto :goto_4
.end method

.method public static native getCallerClass(I)Ljava/lang/Class;
.end method

.method private static native getClassAccessFlags(Ljava/lang/Class;)I
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6

    .line 182
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0, v1, v2, v3}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 12

    const/16 v7, 0x4c

    const/16 v2, 0x2e

    const/4 v0, -0x1

    const/16 v5, 0x5b

    const/4 v1, 0x0

    .line 191
    if-eq p0, p2, :cond_b

    .line 231
    :cond_a
    :goto_a
    return v1

    .line 194
    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 195
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 196
    if-eq v3, v0, :cond_17

    if-ne v6, v0, :cond_1b

    .line 199
    :cond_17
    if-ne v3, v6, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    .line 205
    :cond_1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_6b

    move v0, v1

    .line 207
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_22

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_54

    move v2, v0

    .line 214
    :goto_31
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_84

    move v0, v1

    .line 216
    :cond_38
    add-int/lit8 v0, v0, 0x1

    .line 217
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_38

    .line 218
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_6d

    move v4, v0

    .line 225
    :goto_47
    sub-int v5, v3, v2

    .line 226
    sub-int v0, v6, v4

    if-ne v5, v0, :cond_a

    move-object v0, p1

    move-object v3, p3

    .line 231
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_a

    .line 211
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal class name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    move v2, v1

    .line 205
    goto :goto_31

    .line 220
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal class name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_84
    move v4, v1

    .line 214
    goto :goto_47
.end method

.method static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3

    .line 239
    :goto_0
    if-eqz p0, :cond_b

    .line 240
    if-ne p0, p1, :cond_6

    .line 241
    const/4 v0, 0x1

    .line 245
    :goto_5
    return v0

    .line 243
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 245
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static quickCheckMemberAccess(Ljava/lang/Class;I)Z
    .registers 3

    .line 80
    invoke-static {p0}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result v0

    and-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public static varargs registerFieldsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 4

    const-class v0, Lsun/reflect/Reflection;

    monitor-enter v0

    .line 251
    :try_start_3
    sget-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    .line 252
    invoke-static {v0, p0, p1}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 253
    const-class v0, Lsun/reflect/Reflection;

    monitor-exit v0

    return-void

    .line 250
    :catchall_f
    move-exception v0

    const-class v1, Lsun/reflect/Reflection;

    monitor-exit v1

    throw v0
.end method

.method private static varargs registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 269
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-object v0

    .line 265
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs registerMethodsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 4

    const-class v0, Lsun/reflect/Reflection;

    monitor-enter v0

    .line 258
    :try_start_3
    sget-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    .line 259
    invoke-static {v0, p0, p1}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 260
    const-class v0, Lsun/reflect/Reflection;

    monitor-exit v0

    return-void

    .line 257
    :catchall_f
    move-exception v0

    const-class v1, Lsun/reflect/Reflection;

    monitor-exit v1

    throw v0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 115
    .line 118
    if-ne p0, p1, :cond_5

    .line 178
    :cond_4
    :goto_4
    return v3

    .line 123
    :cond_5
    invoke-static {p1}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_66

    .line 124
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 126
    if-nez v0, :cond_17

    move v3, v1

    .line 127
    goto :goto_4

    :cond_17
    move v2, v3

    .line 133
    :goto_18
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 139
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 141
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_64

    move v4, v3

    .line 146
    :goto_2b
    if-nez v4, :cond_62

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_62

    .line 147
    if-nez v2, :cond_3a

    .line 148
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    move v2, v3

    .line 153
    :cond_3a
    if-eqz v0, :cond_62

    move v4, v3

    move v5, v2

    .line 158
    :goto_3e
    if-nez v4, :cond_42

    move v3, v1

    .line 159
    goto :goto_4

    .line 162
    :cond_42
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    if-nez p2, :cond_5d

    move-object v2, p1

    .line 165
    :goto_4b
    if-eq v2, p0, :cond_4

    .line 166
    if-nez v5, :cond_53

    .line 167
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 168
    :cond_53
    if-nez v0, :cond_4

    .line 171
    invoke-static {v2, p0}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    move v3, v1

    .line 172
    goto :goto_4

    .line 164
    :cond_5d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_4b

    :cond_62
    move v5, v2

    goto :goto_3e

    :cond_64
    move v4, v1

    goto :goto_2b

    :cond_66
    move v0, v1

    move v2, v1

    goto :goto_18
.end method
