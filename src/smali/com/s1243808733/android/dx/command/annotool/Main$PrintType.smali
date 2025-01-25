.class final enum Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;
.super Ljava/lang/Enum;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/annotool/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PrintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

.field public static final enum CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

.field public static final enum INNERCLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

.field public static final enum METHOD:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

.field public static final enum PACKAGE:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;
    .registers 3

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->INNERCLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->METHOD:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->PACKAGE:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    const-string v1, "INNERCLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->INNERCLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 38
    new-instance v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    const-string v1, "METHOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->METHOD:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    const-string v1, "PACKAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->PACKAGE:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 35
    invoke-static {}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->$values()[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->$VALUES:[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;
    .registers 2

    .line 35
    const-class v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;
    .registers 1

    .line 35
    sget-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->$VALUES:[Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    return-object v0
.end method
