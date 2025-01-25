.class final Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-gt v0, v1, :cond_36

    move v0, v1

    :goto_9
    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    array-length v0, p1

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_10
    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    array-length v0, p2

    if-ne v0, v1, :cond_3c

    aget-object v0, p2, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, p2, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_3a

    :goto_26
    invoke-static {v1}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    :goto_35
    return-void

    :cond_36
    move v0, v2

    goto :goto_9

    :cond_38
    move v0, v2

    goto :goto_10

    :cond_3a
    move v1, v2

    goto :goto_26

    :cond_3c
    aget-object v0, p1, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, p1, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    aget-object v0, p1, v2

    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_35
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lutilcode/com/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    iget-object v1, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lutilcode/com/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    goto :goto_a
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_a
    iget-object v1, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lutilcode/com/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_25

    const-string v0, "?"

    goto :goto_1b

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lutilcode/com/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method
