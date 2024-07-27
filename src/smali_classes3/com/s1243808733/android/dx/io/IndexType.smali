.class public enum Lcom/s1243808733/android/dx/io/IndexType;
.super Ljava/lang/Enum;
.source "IndexType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/io/IndexType;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/io/IndexType;

.field public static final CALL_SITE_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final FIELD_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final FIELD_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final INLINE_METHOD:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final METHOD_AND_PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final METHOD_HANDLE_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final METHOD_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final NONE:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final STRING_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final TYPE_REF:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final UNKNOWN:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final VARIES:Lcom/s1243808733/android/dx/io/IndexType;

.field public static final VTABLE_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->UNKNOWN:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->NONE:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "VARIES"

    invoke-direct {v0, v1, v5}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->VARIES:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "TYPE_REF"

    invoke-direct {v0, v1, v6}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->TYPE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "STRING_REF"

    invoke-direct {v0, v1, v7}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->STRING_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "METHOD_REF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "FIELD_REF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->FIELD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "METHOD_AND_PROTO_REF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_AND_PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "CALL_SITE_REF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->CALL_SITE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "INLINE_METHOD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->INLINE_METHOD:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "VTABLE_OFFSET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->VTABLE_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "FIELD_OFFSET"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->FIELD_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "METHOD_HANDLE_REF"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_HANDLE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    new-instance v0, Lcom/s1243808733/android/dx/io/IndexType;

    const-string v1, "PROTO_REF"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/s1243808733/android/dx/io/IndexType;

    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->UNKNOWN:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->NONE:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->VARIES:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->TYPE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->STRING_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->FIELD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_AND_PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->CALL_SITE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->INLINE_METHOD:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->VTABLE_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->FIELD_OFFSET:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_HANDLE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dx/io/IndexType;->$VALUES:[Lcom/s1243808733/android/dx/io/IndexType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/io/IndexType;
    .registers 5

    .line 63
    sget-object v1, Lcom/s1243808733/android/dx/io/IndexType;->$VALUES:[Lcom/s1243808733/android/dx/io/IndexType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/io/IndexType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/io/IndexType;
    .registers 1

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/io/IndexType;->$VALUES:[Lcom/s1243808733/android/dx/io/IndexType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/io/IndexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/io/IndexType;

    return-object v0
.end method
