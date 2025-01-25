.class public Lsun/misc/resources/Messages_ko;
.super Ljava/util/ListResourceBundle;
.source "Messages_ko.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "optpkg.versionerror"

    aput-object v1, v0, v4

    const-string v1, "오류: {0} JAR 파일에 잘못된 버전 형식이 사용되었습니다. 설명서를 참조하여 지원되는 버전 형식을 확인하십시오."

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v4

    const-string v2, "오류: 필요한 JAR 표시 속성 일부가 {0} JAR 파일에 설정되어 있지 않습니다."

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    aput-object v0, v2, v4

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "optpkg.attributeerror"

    aput-object v3, v0, v4

    const-string v3, "오류: 필요한 {0} JAR 표시 속성이 {1} JAR 파일에 설정되어 있지 않습니다."

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    sput-object v2, Lsun/misc/resources/Messages_ko;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .registers 2

    .line 43
    sget-object v0, Lsun/misc/resources/Messages_ko;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
