.class abstract Lsun/reflect/UnsafeFieldAccessorImpl;
.super Lsun/reflect/FieldAccessorImpl;
.source "UnsafeFieldAccessorImpl.java"


# static fields
.field static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field protected final field:Ljava/lang/reflect/Field;

.field protected final fieldOffset:I

.field protected final isFinal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/reflect/UnsafeFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lsun/reflect/FieldAccessorImpl;-><init>()V

    .line 47
    iput-object p1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    .line 48
    sget-object v0, Lsun/reflect/UnsafeFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->fieldOffset(Ljava/lang/reflect/Field;)I

    move-result v0

    iput v0, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->fieldOffset:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    iput-boolean v0, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->isFinal:Z

    .line 50
    return-void
.end method

.method private getQualifiedFieldName()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected ensureObj(Ljava/lang/Object;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected getSetMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 145
    const-string v0, "Can not set"

    .line 146
    iget-object v1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " static"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-boolean v1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->isFinal:Z

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " final"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " field "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lsun/reflect/UnsafeFieldAccessorImpl;->getQualifiedFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null value"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 113
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 117
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 121
    const-string v0, "char"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetDoubleIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 141
    const-string v0, "double"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetFloatIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 137
    const-string v0, "float"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/reflect/UnsafeFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    .line 65
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0}, Lsun/reflect/UnsafeFieldAccessorImpl;->getQualifiedFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" with illegal data type conversion to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    return-object v1
.end method

.method protected newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 129
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 133
    const-string v0, "long"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 125
    const-string v0, "short"

    invoke-virtual {p0, v0}, Lsun/reflect/UnsafeFieldAccessorImpl;->newGetIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected throwFinalFieldIllegalAccessException(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 89
    const-string v0, "byte"

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 85
    const-string v0, "char"

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 109
    const-string v0, "double"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(F)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 105
    const-string v0, "float"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 97
    const-string v0, "int"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 101
    const-string v0, "long"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 77
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeFieldAccessorImpl;->getSetMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected throwFinalFieldIllegalAccessException(S)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 93
    const-string v0, "short"

    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected throwFinalFieldIllegalAccessException(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 81
    const-string v0, "boolean"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected throwSetIllegalArgumentException(B)V
    .registers 4

    .line 176
    const-string v0, "byte"

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected throwSetIllegalArgumentException(C)V
    .registers 4

    .line 180
    const-string v0, "char"

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected throwSetIllegalArgumentException(D)V
    .registers 6

    .line 200
    const-string v0, "double"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected throwSetIllegalArgumentException(F)V
    .registers 4

    .line 196
    const-string v0, "float"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected throwSetIllegalArgumentException(I)V
    .registers 4

    .line 188
    const-string v0, "int"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected throwSetIllegalArgumentException(J)V
    .registers 6

    .line 192
    const-string v0, "long"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method protected throwSetIllegalArgumentException(Ljava/lang/Object;)V
    .registers 4

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 168
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeFieldAccessorImpl;->getSetMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected throwSetIllegalArgumentException(S)V
    .registers 4

    .line 184
    const-string v0, "short"

    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected throwSetIllegalArgumentException(Z)V
    .registers 4

    .line 172
    const-string v0, "boolean"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun/reflect/UnsafeFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
